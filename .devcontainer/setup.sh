# Add MongoDB GPG key
curl -fsSL https://pgp.mongodb.com/server-8.0.asc | \
  sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor

# Add APT source for Ubuntu focal (adjust if needed)
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] \
https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/8.0 multiverse" | \
  sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list

# Update and install mongosh
sudo apt-get update
sudo apt-get install -y mongodb-mongosh mongo-tools

# MONGODB_URI="mongodb://admin:mongodb@mongodb:27017"

# mongoimport \
#   --uri="mongodb://admin:mongodb@mongodb:27017" \
#   --collection=authors \
#   --file="./data/library.authors.json" \
#   --jsonArray