  
#!/bin/bash
echo "Make your password more Secure and Robust"
echo "Enter the length of the password(<=65) you want:" 
read LENGTH
echo "Enter the number of passwords you want to generate and choose among them:"
read NUMBER
echo "The List of $NUMBER Passwords:"
echo "--------------------------------------------------------------------------------------------------------------------------------------"
for P in $(seq 1 $NUMBER);
do
	openssl rand -base64 48 | cut -c1-$LENGTH 
done
echo "---------------------------------------------------------------------------------------------------------------------------------------"
echo "Thank you for using this tool !!!!! "
