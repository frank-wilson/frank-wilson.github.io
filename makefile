remote:
	jekyll build
	git add --all . &&\
	git commit -m "$$(date)" &&\
	git push origin master
	cd _site &&\
	git add --all . &&\
	git commit -m "$$(date)" &&\
	git push origin master
    
local:
	jekyll build
	jekyll serve --incremental --port 4000
