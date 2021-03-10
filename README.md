# Charly

Steps to run robot framework on terminal:	

<b>Installations required:</b>

sudo apt install python3-pip </br>
pip install robotframework </br>
pip install robotframework-selenium2library </br>

Install chrome driver if required 	

<b>Command to run testcases </b> (Run in the same location where robotframework was installed)

robot --variable env:<location where the testcase folder resides>  -d <result folder location> <$FileName$ you want to run>	
eg: --variable env:/Users/shiprashekhar/charly -d /Users/shiprashekhar/charly/results studylevelPHD.robot	

For more info about Robot framework please read a blog I wrote for Mac: https://www.evernote.com/l/Aabh16wSwMFNk5d8RDLgd0lcEaoUoynR7OI
