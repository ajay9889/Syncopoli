LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := libtommath
LOCAL_C_INCLUDES := $(LOCAL_PATH)/..

LOCAL_CFLAGS += -DLOCALOPTIONS_H_EXISTS
LOCAL_SRC_FILES := \
bn_cutoffs.c bn_deprecated.c bn_mp_2expt.c bn_mp_abs.c bn_mp_add.c bn_mp_add_d.c bn_mp_addmod.c \
bn_mp_and.c bn_mp_clamp.c bn_mp_clear.c bn_mp_clear_multi.c bn_mp_cmp.c bn_mp_cmp_d.c bn_mp_cmp_mag.c \
bn_mp_cnt_lsb.c bn_mp_complement.c bn_mp_copy.c bn_mp_count_bits.c bn_mp_decr.c bn_mp_div.c bn_mp_div_2.c \
bn_mp_div_2d.c bn_mp_div_3.c bn_mp_div_d.c bn_mp_dr_is_modulus.c bn_mp_dr_reduce.c bn_mp_dr_setup.c \
bn_mp_error_to_string.c bn_mp_exch.c bn_mp_expt_u32.c bn_mp_exptmod.c bn_mp_exteuclid.c bn_mp_fread.c \
bn_mp_from_sbin.c bn_mp_from_ubin.c bn_mp_fwrite.c bn_mp_gcd.c bn_mp_get_i32.c bn_mp_get_i64.c \
bn_mp_get_l.c bn_mp_get_ll.c bn_mp_get_mag_u32.c bn_mp_get_mag_u64.c bn_mp_get_mag_ul.c \
bn_mp_get_mag_ull.c bn_mp_grow.c bn_mp_incr.c bn_mp_init.c bn_mp_init_copy.c bn_mp_init_i32.c \
bn_mp_init_i64.c bn_mp_init_l.c bn_mp_init_ll.c bn_mp_init_multi.c bn_mp_init_set.c bn_mp_init_size.c \
bn_mp_init_u32.c bn_mp_init_u64.c bn_mp_init_ul.c bn_mp_init_ull.c bn_mp_invmod.c bn_mp_is_square.c \
bn_mp_iseven.c bn_mp_isodd.c bn_mp_kronecker.c bn_mp_lcm.c bn_mp_log_u32.c bn_mp_lshd.c bn_mp_mod.c \
bn_mp_mod_2d.c bn_mp_mod_d.c bn_mp_montgomery_calc_normalization.c bn_mp_montgomery_reduce.c \
bn_mp_montgomery_setup.c bn_mp_mul.c bn_mp_mul_2.c bn_mp_mul_2d.c bn_mp_mul_d.c bn_mp_mulmod.c bn_mp_neg.c \
bn_mp_or.c bn_mp_pack.c bn_mp_pack_count.c bn_mp_prime_fermat.c bn_mp_prime_frobenius_underwood.c \
bn_mp_prime_is_prime.c bn_mp_prime_miller_rabin.c bn_mp_prime_next_prime.c \
bn_mp_prime_rabin_miller_trials.c bn_mp_prime_rand.c bn_mp_prime_strong_lucas_selfridge.c \
bn_mp_radix_size.c bn_mp_radix_smap.c bn_mp_rand.c bn_mp_read_radix.c bn_mp_reduce.c bn_mp_reduce_2k.c \
bn_mp_reduce_2k_l.c bn_mp_reduce_2k_setup.c bn_mp_reduce_2k_setup_l.c bn_mp_reduce_is_2k.c \
bn_mp_reduce_is_2k_l.c bn_mp_reduce_setup.c bn_mp_root_u32.c bn_mp_rshd.c bn_mp_sbin_size.c bn_mp_set.c \
bn_mp_set_i32.c bn_mp_set_i64.c bn_mp_set_l.c bn_mp_set_ll.c bn_mp_set_u32.c bn_mp_set_u64.c \
bn_mp_set_ul.c bn_mp_set_ull.c bn_mp_shrink.c bn_mp_signed_rsh.c bn_mp_sqr.c bn_mp_sqrmod.c bn_mp_sqrt.c \
bn_mp_sqrtmod_prime.c bn_mp_sub.c bn_mp_sub_d.c bn_mp_submod.c bn_mp_to_radix.c bn_mp_to_sbin.c \
bn_mp_to_ubin.c bn_mp_ubin_size.c bn_mp_unpack.c bn_mp_xor.c bn_mp_zero.c bn_prime_tab.c bn_s_mp_add.c \
bn_s_mp_balance_mul.c bn_s_mp_exptmod.c bn_s_mp_exptmod_fast.c bn_s_mp_get_bit.c bn_s_mp_invmod_fast.c \
bn_s_mp_invmod_slow.c bn_s_mp_karatsuba_mul.c bn_s_mp_karatsuba_sqr.c bn_s_mp_montgomery_reduce_fast.c \
bn_s_mp_mul_digs.c bn_s_mp_mul_digs_fast.c bn_s_mp_mul_high_digs.c bn_s_mp_mul_high_digs_fast.c \
bn_s_mp_prime_is_divisible.c bn_s_mp_rand_jenkins.c bn_s_mp_rand_platform.c bn_s_mp_reverse.c \
bn_s_mp_sqr.c bn_s_mp_sqr_fast.c bn_s_mp_sub.c bn_s_mp_toom_mul.c bn_s_mp_toom_sqr.c

include $(BUILD_STATIC_LIBRARY)
