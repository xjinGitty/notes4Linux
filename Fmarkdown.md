learning notes for markdown
===

## grammer

1. markdown use # for the headline and the number of the # for different level headline
2. it's better have one space between the # and the headline
3. markdown use - + and * for the list
4. and if would list to be sequence with number just use 'num. '
5. link and pic: [word](link) for link; ![]() for pic
6. quote: > for paragraph
7. one * for xieti; two * for bald; and ~~ for delete; and the \ is usable as in the shell to        inser the specific letter
8. table could present as belowing *(a line is needed before the table)*:

        | A | B | C|
        |---|---|--|
        |dog|cat|NA|

---

## grammer -2
1. ``small code area ``, could be included in the double ` letter
2. then the & and the [] could be easily used
3. and as above I have used, --- could be used for the segment lable
4. 2 *enter* means open a new line, if just one *enter* be striked, just meaning the <br/>
5. the big code area could be included in the 4 ' ' or 1 tab, like belowing:
       this is the big code area (but actually, I just made it by 1 tab followed by 3 spaces), and tried just use 4 spaces or 1 tab, bug it did not work, may be it's caused for the differrent markdown verson??? I guess, or it has something to do with the billinger app
6. highlight the code and the line num print, just use '''language:n *(show this as belowing)*
        ```javascript:n

        var ihubo = {
        nickName  : "Markdown编辑器",
        site : "http://www.markdown.com/"
        }
    seems this does not work well???
7. > '>' could be used for the quotations area
8. table should go as belowing:

        First Header | Second Header | Third Header
        ------------ | ------------- | ------------
        Content Cell | Content Cell  | Content Cell
        Content Cell | Content Cell  | Content Cell
9. link method (here take a pic and docu for example)
![](http://image6.tuku.cn/pic/wallpaper/dongwu/xueqiaoquanbizhi/023.jpg)
[简书首页](http://jianshu.io)
10. a poem quotation:

**一盏灯， 一片昏黄； 一简书， 一杯淡茶。 守着那一份淡定， 品读属于自己的寂寞。 保持淡定， 才能欣赏到最美丽的风景！ 保持淡定， 人生从此不再寂寞。**

---


## notes in the end

+ table format (: used for the align method)

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

1. \>(starting tag) and &(html entity) has specific meaning in HTML lan,
2. and there need more explaination for the & and >, when using them in the coding area or just type directly (markdown could auto translate it to HTML's composition or non)
3. *(AT&lt;T and AT&amp;T for the > and & )*

---

1. HTML code area, could be separated by adding line at the beginning and at the end; another tips that should be noticed is that, could not use tab or the 4 spaces to indent the HTML code area
2. and markdown lan will not be represent when it is included in the HTML code erea (区段标签中有效，区块标签中无效)

---

1. test the segmentation function: 
 
            first should notice that at the beginning do not use tab or the 4 spaces as starting,  it will represent as coding area  
            another rule is that, 2 spaces at the end of line will make a starting in the new line
            
            the third rule is: a blank line will make a start of another paragraph

the
new 
line

    thenew line  
  
    the
    new 
    line
  
>    the
    new 
    line

2. here is the question ??? why the number not continued (for each segmentation under a list must have tab or 4 tables intentation)

3. \> could have different intent level and all of the markdown lan could be inserted in the content included in the >
    > This is the first level of quoting.
    >> ### This is nested blockquote.
    >
    > Back to the first level.

    1. (one spcace is at the begining) and is there a method to make the sequence aligned with the quotation in format??? now it has more intentation
    
4. when coding is in sequence, 2 tab or the correspongding 8 spaces is needed; and when a line without the quotation, then will be thought as the ending for the coding area
5. link in markdown could have below format:
    * [text](http://xxx "title")
    * [text][]
    * [text][1]
    * ![pic](http://xxx "title")  * (no matter if the pic has been named, it will just show the pic directly) * 
[text]: http://xxx "title"
[1]: http://xxx (titile)

---

1. either use (``) or use tab or 4 spaces to quote coding will be ok
2. ![Alt text](/path/to/img.jpg)
3. <http://image6.tuku.cn/pic/wallpaper/dongwu/xueqiaoquanbizhi/023.jpg> *(for the content in <> will be translate as link automatically)


## ending
- almost all of the normal formula for markdown has been tracked here.
- \ could be used for the special character's quotation, listed as belowing: 
{} () * - + = # _ []


