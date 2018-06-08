{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf400
{\fonttbl\f0\fnil\fcharset0 AndaleMono;}
{\colortbl;\red255\green255\blue255;\red171\green67\blue203;\red49\green49\blue49;\red83\green83\blue83;
\red50\green91\blue142;\red51\green109\blue125;\red94\green141\blue197;}
{\*\expandedcolortbl;;\cssrgb\c73333\c37647\c83529;\cssrgb\c25098\c25098\c25098;\cssrgb\c40000\c40000\c40000;
\cssrgb\c25098\c43922\c62745;\cssrgb\c25098\c50196\c56471;\cssrgb\c43922\c62745\c81569;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl280\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 $BootstrapUrl\cf3 \strokec3  \cf4 \strokec4 =\cf3 \strokec3  \cf5 \strokec5 "https://raw.githubusercontent.com/plus3it/watchmaker/master/docs/files/bootstrap/watchmaker-bootstrap.ps1"\cf3 \strokec3 \
\cf2 \strokec2 $PythonUrl\cf3 \strokec3  \cf4 \strokec4 =\cf3 \strokec3  \cf5 \strokec5 "https://www.python.org/ftp/python/3.6.4/python-3.6.4-amd64.exe"\cf3 \strokec3 \
\cf2 \strokec2 $PypiUrl\cf3 \strokec3  \cf4 \strokec4 =\cf3 \strokec3  \cf5 \strokec5 "https://pypi.org/simple"\cf3 \strokec3 \
\
\pard\pardeftab720\sl280\partightenfactor0
\cf6 \strokec6 # Download bootstrap file\cf3 \strokec3 \
\pard\pardeftab720\sl280\partightenfactor0
\cf2 \strokec2 $BootstrapFile\cf3 \strokec3  \cf4 \strokec4 =\cf3 \strokec3  \cf5 \strokec5 "\cf7 \strokec7 $\{\cf2 \strokec2 Env\cf3 \strokec3 :\cf2 \strokec2 Temp\cf7 \strokec7 \}\cf5 \strokec5 \\$(\cf7 \strokec7 $\{\cf2 \strokec2 BootstrapUrl\cf7 \strokec7 \}\cf5 \strokec5 .split('/')[-1])"\cf3 \strokec3 \
\pard\pardeftab720\sl280\partightenfactor0
\cf4 \strokec4 (\cf3 \strokec3 New-Object System.Net.WebClient\cf4 \strokec4 )\cf3 \strokec3 .DownloadFile\cf4 \strokec4 (\cf5 \strokec5 "\cf2 \strokec2 $BootstrapUrl\cf5 \strokec5 "\cf3 \strokec3 , \cf5 \strokec5 "\cf2 \strokec2 $BootstrapFile\cf5 \strokec5 "\cf4 \strokec4 )\cf3 \strokec3 \
\
\pard\pardeftab720\sl280\partightenfactor0
\cf6 \strokec6 # Install python\cf3 \strokec3 \
& \cf5 \strokec5 "\cf2 \strokec2 $BootstrapFile\cf5 \strokec5 "\cf3 \strokec3  -PythonUrl \cf5 \strokec5 "\cf2 \strokec2 $PythonUrl\cf5 \strokec5 "\cf3 \strokec3  -Verbose -ErrorAction Stop\
\
\cf6 \strokec6 # Install watchmaker\cf3 \strokec3 \
python -m pip install --index-url\cf4 \strokec4 =\cf5 \strokec5 "\cf2 \strokec2 $PypiUrl\cf5 \strokec5 "\cf3 \strokec3  --upgrade pip setuptools\
pip install --index-url\cf4 \strokec4 =\cf5 \strokec5 "\cf2 \strokec2 $PypiUrl\cf5 \strokec5 "\cf3 \strokec3  --upgrade watchmaker\
\
\cf6 \strokec6 # Run watchmaker\cf3 \strokec3 \
watchmaker --log-level debug --log-dir\cf4 \strokec4 =\cf3 \strokec3 C:\cf5 \strokec5 \\W\cf3 \strokec3 atchmaker\cf5 \strokec5 \\L\cf3 \strokec3 ogs\
}