# ============================================================================
# FILE: defx/drive.py
# AUTHOR: Shougo Matsushita <Shougo.Matsu at gmail.com>
# License: MIT license
# ============================================================================

from pathlib import Path
import typing
import os

from defx.util import Nvim, UserContext, Candidates
from denite.source.base import Base

class Source(Base):

    def __init__(self, vim: Nvim) -> None:
        super().__init__(vim)

        self.name = 'bookmark'
        self.kind = 'command'
        self._bookmark: typing.List[str] = []

    def on_init(self, context: UserContext) -> None:
#         options = self.vim.current.buffer.options
#         if 'filetype' not in options or options['filetype'] != 'defx':
#             return
        path_text = r'C:\Neovim\_config\nvim\bookmark.txt'
        with open(path_text) as f:
          self._bookmark= f.read().splitlines()
#         self._bookmark = self.vim.vars['defx#_bookmark']

    def gather_candidates(self, context: UserContext) -> Candidates:
#         return [{
#             'word': x,
#             'abbr': x + '/',
#             'action__command': f"call defx#call_action('cd', ['{x}'])",
#             'action__path': x,
#         } for x in self._bookmark]
#         } for x in self._bookmark if Path(x).exists()]

#         for x in self._bookmark if Path(x).exists():
        result_list = list()
        
        for x in self._bookmark:
            if os.path.isdir(x):
                result_list.append({
                    'word': x,
                    'abbr': x + '/',
                    'action__command': f"Defx " + x,
                    'action__path': x
                })
            elif os.path.isfile(x):
                result_list.append({
                    'word': x,
                    'abbr': x,
                    'action__command': f"e " + x,
                    'action__path': x,
                })

        return result_list


