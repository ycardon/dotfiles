function set_proxy --description 'set cntlm for orange proxy'
	set NoProxy 'NoProxy         localhost, 127.0.0.*, 10.*, 192.168.*'
	sudo sed 's/^NoProxy.*$/'$NoProxy'/g' -i /etc/cntlm.conf
	sudo systemctl restart cntlm
end
