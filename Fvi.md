> # some notes for vi Program
> 
> 1. ctrl + b: means back 1 page
>    and with f: means forward 1 page	
> 
> 2. +: means jump to the non-empty next line
>    and -: means jump to the non-empty last line
> 
> 3. 20+space: means will jump to 20 letters to the right
> 
> 4, 0 or home key: move to the first letter of the line
> 
> 5. $ or end key: move to the last letter of the line
> 
> 6. H M L key: move the first, middle, last line of this SCREEN
> 
> 7. G key: move to the last line of this documentation (nG is for the specific line in the documentation)
> 
> 8. gg key: move to the first line of this documentation (same with 1G)
> 
> 9. n<ENTER> :move afterward n lines
> 
> 10. :n1,n2/word1/word2/g :means find word1 from line n1 to line n2 and replace it with word2
> 
> 11. ...../gc: same with the above command, just confirm with user each time when doing the replacement.
> 
> 12. d1G: delete lines from the current line to first line
> 13. dG: delete line from the current line to the last line
> 14. d0: delete letters from current to the first of the line
> 15. d$: delete letters from current to the last of the line
> 
> 16 ???: need to confirm y1G and yG and y0 and y$: means the line or the colume???
> 
> 17. J key: conjuction the current line with the following line
> 
> 18. c key: repeate deletion, c6j means delete the following 6 lines
> 
> 19. u key: reset the last action
> 
> 20. ctrl + r: repeat the last action: same with . (just a dot)
> 
> 
> 
> 21. ZZ : if modify then save and exit, if do not then exit directly
> 
> 22. :w file1 : write to file1
> 23. :r file2 : read file2 to the current position
> 24. :n1,n2 w file3 : save from line n1 to line n2 to file3
> 
> 25. :! command: leave vi tempary and run command
> 
> 26. :set nonu : cancel the the line num  
> 
> 
> 
> 28. Visual block: 
> 1)  v: select the caracter that just go through
> 2)  V: sledt the lines that just go through
> 3)  ctrl+v: select visual block that just go through
> 
> 4)  y and d: copy or delete the content just select
> 
> 
> 
> 29. multi-documentation editing
> 1) :files : list all of the file that opened in the vi
> 2) :n and :N : edit the next and the previous documentation
> 3) vim file1 file2 : open file1 and file2 in the same vi
> 
> 
> 30. separate same big file in 2 window
> 1) :sp file4 : then could open this file in 2 windows (file4 could not type)
> 2) : continue use :sp file5 : could open file5 at the same screen 
> 3) ctrl + w + j: move the the above window
> 
> 4) :q : at the current window will close the window
> 
> 
> 
2014-12-28:
### vim undo
1. :undolist show all the changes with changes num
2. g- and g+ could move back or go ahead between the changes
3. u and c +r could also have same function as above command
4. earlier and later could back to the specific time point

### visual mode
1. ~ will convert upper and lower
2. < and > will delete or insert indention
3. gv could shift between the 2 times chosen block
4. 3j and 2l will go 3 down and 2 right as expected
5. y d c

### indent
[vim notes](http://www.360doc.com/content/10/1128/15/4807202_73143894.shtml)

1. >> and << in normal mode will add or del indentation

### spell check
1. :set spell, :set nospell

### diff
1. :diffsplit file2, :diffthis, vim -d file1 file2, :vert diffsplit file2

### template


## another vim notes
### encrypt file
1. vim -x file, then passwd will be asked for opening file
2.g
