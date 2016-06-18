# emacs: -*- mode: python; py-indent-offset: 4; indent-tabs-mode: nil -*-
# vi: set ft=python sts=4 ts=4 sw=4 et:

import os

matListFile = r'/home/sealhuang/study/Visual_search/doc/matList'
subjListFile = r'/home/sealhuang/study/Visual_search/doc/subjList'

fsessid = open(subjListFile)
subjList = [line.strip() for line in fsessid]
fmat = open(matListFile)
matList = [line.split('_')[0] for line in fmat]
count = 0

for mat in matList:
    if mat not in subjList:
        count = count +1
        print mat + ' ' + str(count) + '\n'

