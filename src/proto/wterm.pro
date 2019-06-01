/* wterm.c */
wterm_buffer_T *wterm_buffer(wterm_T *wt);
size_t wterm_buffer_get_current(wterm_buffer_T *wtb);
void wterm_buffer_input_write(wterm_buffer_T *wtb, char *msg, size_t len);
size_t wterm_buffer_output_read(wterm_buffer_T *wtb, char *buf, size_t len);
void wterm_screen_flush(wterm_screen_T *wts);
void wterm_size_get(wterm_T *wt, wterm_size_T *wts);
/* vim: set ft=c : */
