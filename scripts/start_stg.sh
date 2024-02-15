#!/bin/bash
cd /var/www/html/plandid_app/Plandid_backend/stg/
ls -la
pwd
tar -xzf plandid_backend_stg_artifact.tar.gz
rm -rf plandid_backend_stg_artifact.tar.gz
mkdir bin
cp env bin/.env.stg
pwd
#pm2 delete Plandid_Backend-Qa
NODE_ENV=stg pm2 restart ./dist/src/main.js --name Plandid_Backend-Stg
#pm2 reload plandid_stg_Backned 
pm2 status
