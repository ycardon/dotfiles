function update
	echo "=== ARCHLINUX ==="
	yaourt -Syyua --noconfirm

	echo "=== NODE ==="
	nvm use node
	npm -g update

	echo "=== RUBY ==="
	gem update

	echo "=== PYTHON ==="
	pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs sudo pip install --upgrade

	echo "=== FISH ==="
	fish_update_completions
	fisher update
end
