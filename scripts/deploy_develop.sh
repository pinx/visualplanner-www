ember build --environment=production
curl -T "dist/index.html" -u $FTP_USER:$FTP_PASSWORD ftp://5.100.228.185/www/staging/
cd dist/assets ; for i in * ; do curl -T "$i" -u $FTP_USER:$FTP_PASSWORD ftp://5.100.228.185/www/staging/assets/$i ; done ; cd ../..
