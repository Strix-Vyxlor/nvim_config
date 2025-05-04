{inputs}: final: prev: let
  pkgs-locked = inputs.nixpkgs.legacyPackages.${final.system};
in {
  strixvim = final.callPackage ./pkgs/strixvim.nix {
    inherit (pkgs-locked) wrapNeovimUnstable neovimUtils;
  };
}
