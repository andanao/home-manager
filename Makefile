.PHONY: update
update:
	home-manager switch --flake .#adrian

.PHONY: clean
clean:
	nix-collect-garbage -d
