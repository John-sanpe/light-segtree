/* SPDX-License-Identifier: GPL-2.0-or-later */
/*
 * Copyright(c) 2022 Sanpe <sanpeqf@gmail.com>
 */

#include "segtree.h"

#define SEGTREE_START(segnode) ((segnode)->start)
#define SEGTREE_END(segnode) ((segnode)->end)
SEGTREE_DEFINE(, segtree, struct segtree_node, node, unsigned long, subtree, SEGTREE_START, SEGTREE_END);
