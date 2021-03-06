package org.amoradi.syncopoli;

import java.util.List;

public interface IBackupHandler {
    int addBackup(BackupItem bi);
    int removeBackup(BackupItem bi);
    int editBackup(BackupItem bi);
    int copyBackup(BackupItem bi);
    int updateBackup(String old_name, BackupItem bi);
    int runBackup(BackupItem bi);
    void showLog(BackupItem bi);
    void updateBackupTimestamp(BackupItem bi);
    void updateBackupList();
    List<BackupItem> getBackups();
    void syncBackups();
}
