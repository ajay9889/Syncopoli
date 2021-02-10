package org.amoradi.syncopoli;

import android.app.Fragment;
import android.os.Bundle;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

import java.util.List;

public class BackupListFragment extends Fragment {
    private List<BackupItem> mBackupItems;
    private IBackupHandler mBackupHandler;
    private BackupAdapter mAdapter;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.fragment_backuplist, container, false);

        RecyclerView mRecyclerView = (RecyclerView) v.findViewById(R.id.recyclerview_backup);
        mRecyclerView.setHasFixedSize(true);
        mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity().getApplicationContext()));

        mAdapter = new BackupAdapter(mBackupHandler, getActivity());
        mRecyclerView.setAdapter(mAdapter);

        mRecyclerView.addItemDecoration(new DividerItemDecoration(getActivity(), DividerItemDecoration.VERTICAL_LIST));

        FloatingActionButton fab = (FloatingActionButton) v.findViewById(R.id.fab);
        if (fab != null) {
            fab.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    AddBackupItemFragment f = new AddBackupItemFragment();
                    getFragmentManager().beginTransaction().replace(R.id.content_container, f).addToBackStack(null).commit();
                }
            });
        }
        return v;
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        super.onCreateOptionsMenu(menu, inflater);
        menu.findItem(R.id.action_done).setVisible(false);
        menu.findItem(R.id.action_refresh).setVisible(true);
        menu.findItem(R.id.action_run).setVisible(true);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_refresh) {
            mBackupHandler.updateBackupList();
            mBackupItems = mBackupHandler.getBackups();
            mAdapter.notifyDataSetChanged();
        } else {
            super.onOptionsItemSelected(item);
        }

        return true;
    }

    public void setBackupHandler(IBackupHandler handler) {
        mBackupHandler = handler;
    }
}