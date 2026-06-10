#!/bin/bash
cd themes/myhabor/
git checkout book_imp &&\
npm run build-prod &&\
git add static &&\
git commit -m "build" &&\
git push

cd ../../
hugo
git add docs/
git commit -m "build"
git push
