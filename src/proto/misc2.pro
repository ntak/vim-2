/* misc2.c */
int virtual_active(void);
int getviscol(void);
int getviscol2(colnr_T col, colnr_T coladd);
int coladvance_force(colnr_T wcol);
int coladvance(colnr_T wcol);
int getvpos(pos_T *pos, colnr_T wcol);
int inc_cursor(void);
int inc(pos_T *lp);
int incl(pos_T *lp);
int dec_cursor(void);
int dec(pos_T *lp);
int decl(pos_T *lp);
linenr_T get_cursor_rel_lnum(win_T *wp, linenr_T lnum);
void check_pos(buf_T *buf, pos_T *pos);
void check_cursor_lnum(void);
void check_cursor_col(void);
void check_cursor_col_win(win_T *win);
void check_cursor(void);
void adjust_cursor_col(void);
int leftcol_changed(void);
void vim_mem_profile_dump(void);
char_u *alloc(unsigned size);
char_u *alloc_id(unsigned size, alloc_id_T id);
char_u *alloc_clear(unsigned size);
char_u *alloc_check(unsigned size);
char_u *lalloc_clear(long_u size, int message);
char_u *lalloc(long_u size, int message);
char_u *lalloc_id(long_u size, int message, alloc_id_T id);
void *mem_realloc(void *ptr, size_t size);
void do_outofmem_msg(long_u size);
void free_all_mem(void);
char_u *vim_strsave(char_u *string);
char_u *vim_strnsave(char_u *string, int len);
char_u *vim_strsave_escaped(char_u *string, char_u *esc_chars);
char_u *vim_strsave_escaped_ext(char_u *string, char_u *esc_chars, int cc, int bsl);
int csh_like_shell(void);
char_u *vim_strsave_shellescape(char_u *string, int do_special, int do_newline);
char_u *vim_strsave_up(char_u *string);
char_u *vim_strnsave_up(char_u *string, int len);
void vim_strup(char_u *p);
char_u *strup_save(char_u *orig);
char_u *strlow_save(char_u *orig);
void del_trailing_spaces(char_u *ptr);
void vim_strncpy(char_u *to, char_u *from, size_t len);
void vim_strcat(char_u *to, char_u *from, size_t tosize);
int copy_option_part(char_u **option, char_u *buf, int maxlen, char *sep_chars);
void vim_free(void *x);
int vim_stricmp(char *s1, char *s2);
int vim_strnicmp(char *s1, char *s2, size_t len);
char_u *vim_strchr(char_u *string, int c);
char_u *vim_strbyte(char_u *string, int c);
char_u *vim_strrchr(char_u *string, int c);
int vim_isspace(int x);
void ga_clear(garray_T *gap);
void ga_clear_strings(garray_T *gap);
void ga_init(garray_T *gap);
void ga_init2(garray_T *gap, int itemsize, int growsize);
int ga_grow(garray_T *gap, int n);
char_u *ga_concat_strings(garray_T *gap, char *sep);
void ga_add_string(garray_T *gap, char_u *p);
void ga_concat(garray_T *gap, char_u *s);
void ga_append(garray_T *gap, int c);
void append_ga_line(garray_T *gap);
int name_to_mod_mask(int c);
int simplify_key(int key, int *modifiers);
int handle_x_keys(int key);
char_u *get_special_key_name(int c, int modifiers);
int trans_special(char_u **srcp, char_u *dst, int keycode, int in_string);
int find_special_key(char_u **srcp, int *modp, int keycode, int keep_x_key, int in_string);
int extract_modifiers(int key, int *modp);
int find_special_key_in_table(int c);
int get_special_key_code(char_u *name);
char_u *get_key_name(int i);
int get_mouse_button(int code, int *is_click, int *is_drag);
int get_pseudo_mouse_code(int button, int is_click, int is_drag);
int get_fileformat(buf_T *buf);
int get_fileformat_force(buf_T *buf, exarg_T *eap);
void set_fileformat(int t, int opt_flags);
int default_fileformat(void);
int call_shell(char_u *cmd, int opt);
int get_real_state(void);
int after_pathsep(char_u *b, char_u *p);
int same_directory(char_u *f1, char_u *f2);
int vim_chdirfile(char_u *fname, char *trigger_autocmd);
int vim_stat(const char *name, stat_T *stp);
char_u *parse_shape_opt(int what);
int get_shape_idx(int mouse);
void update_mouseshape(int shape_idx);
void *vim_findfile_init(char_u *path, char_u *filename, char_u *stopdirs, int level, int free_visited, int find_what, void *search_ctx_arg, int tagfile, char_u *rel_fname);
char_u *vim_findfile_stopdir(char_u *buf);
void vim_findfile_cleanup(void *ctx);
char_u *vim_findfile(void *search_ctx_arg);
void vim_findfile_free_visited(void *search_ctx_arg);
char_u *find_file_in_path(char_u *ptr, int len, int options, int first, char_u *rel_fname);
char_u *find_directory_in_path(char_u *ptr, int len, int options, char_u *rel_fname);
char_u *find_file_in_path_option(char_u *ptr, int len, int options, int first, char_u *path_option, int find_what, char_u *rel_fname, char_u *suffixes);
int vim_chdir(char_u *new_dir);
int get_user_name(char_u *buf, int len);
void sort_strings(char_u **files, int count);
int pathcmp(const char *p, const char *q, int maxlen);
int filewritable(char_u *fname);
int get2c(FILE *fd);
int get3c(FILE *fd);
int get4c(FILE *fd);
time_T get8ctime(FILE *fd);
char_u *read_string(FILE *fd, int cnt);
int put_bytes(FILE *fd, long_u nr, int len);
int put_time(FILE *fd, time_T the_time);
void time_to_bytes(time_T the_time, char_u *buf);
int has_non_ascii(char_u *s);
void parse_queued_messages(void);
int mch_parse_cmd(char_u *cmd, int use_shcf, char ***argv, int *argc);
int build_argv_from_string(char_u *cmd, char ***argv, int *argc);
int build_argv_from_list(list_T *l, char ***argv, int *argc);
int trace_init(void);
void trace_exit(void);
int trace_capture(char *buf, int size);
void trace_message(void);
/* vim: set ft=c : */
