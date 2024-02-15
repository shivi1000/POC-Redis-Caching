#!/bin/bash
cd /var/www/html/plandid_app/Plandid_backend/qa/
ls -la
pwd
tar -xzf plandid_backend_qa_artifact.tar.gz
rm -rf plandid_backend_qa_artifact.tar.gz
mkdir bin
cp env bin/.env.qa
pwd
#pm2 delete Plandid_Backend-Qa
NODE_ENV=qa pm2 restart ./dist/src/main.js --name Plandid_Backend-Qa
#pm2 reload plandid_Qa_Backned 
pm2 status 
