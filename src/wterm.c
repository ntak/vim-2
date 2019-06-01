/* vi:set ts=8 sts=4 sw=4 noet: */
/*
 * Copyright (c) 2019 Nobuhiro Takasaki <mail@ntak.net>
 * THIS FILE IS DISTRIBUTED UNDER THE VIM LICENSE.
 */

#ifdef FEAT_TERMINAL

#include "vim.h"

static void wt_size_copy(wterm_T *wt, wterm_size_T *wts);

    wterm_buffer_T *
wterm_buffer(
    wterm_T *wt)
{
    return wt->wt_buffer;
}

    size_t
wterm_buffer_get_current(
    wterm_buffer_T *wtb)
{
    return 0;
}

    void
wterm_buffer_input_write(
    wterm_buffer_T *wtb,
    char *msg,
    size_t len)
{
}

    size_t
wterm_buffer_output_read(
    wterm_buffer_T *wtb,
    char *buf,
    size_t len)
{
    return 0;
}

    void
wterm_screen_flush(
    wterm_screen_T *wts)
{
}

    void
wterm_size_get(
    wterm_T *wt,
    wterm_size_T *wts)
{
    wt_size_copy(wt, wts);
}

    static void
wt_size_copy(
    wterm_T *wt,
    wterm_size_T *wts)
{
    wts->wts.rows = wt->wt_size.wts_rows;
    wts->wts.cols = wt->wt_size.wts_cols;
}

#endif
