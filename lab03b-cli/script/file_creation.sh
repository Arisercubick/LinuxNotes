# ~/bin/bash
 mkdir files && cd files
 touch docfile1.docx docfile2.docx docfile3.docx txtfile1.txt txtfile2.txt txtfile3.txt txtfile4.txt
 ls -l
 cd ..
 mkdir TXTFILES
 cp files/*.txt TXTFILES/
 mkdir DOCFILES && mv files/*.docx DOCFILES/
 mkdir temp
 mv */*.txt temp
 rm -r temp
 ls -l > filelist1.txt
 cat filelist1.txt
 head -5 filelist.txt
 tail -7 filelist.txt
 echo finished
