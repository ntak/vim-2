/* vi:set ts=8 sts=4 sw=4 noet: */
/*
 * Copyright (C) 2019 Nobuhiro Takasaki <mail@ntak.net>
 * THIS FILE IS DISTRIBUTED UNDER THE VIM LICENSE.
 */

#include "vim.h"

#if defined(FEAT_TERMINAL) || defined(PROTO)

#include "wterm.h"

void wterm_get_size(const wterm_T *wt, int *prow, int *pcol)
{
    if (prow != NULL)
	*prow = wt->wt_rows;
    if (pcol != NULL)
	*pcol = wt->wt_cols;
}

#endif
