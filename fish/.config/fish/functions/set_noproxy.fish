function set_noproxy --description 'set cntlm for noproxy'
	set NoProxy 'NoProxy *'
	sudo sed 's/^NoProxy.*$/'$NoProxy'/g' -i /etc/cntlm.conf
	sudo systemctl restart cntlm
end
