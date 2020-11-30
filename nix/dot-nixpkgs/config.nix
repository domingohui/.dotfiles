{
  packageOverrides = super: let self = super.pkgs; in
  {
    myHaskellEnv = self.haskell.packages.ghc865.ghcWithPackages
                     (haskellPackages: with haskellPackages; [
                       # libraries

                       # tools
                       cabal-install
                       hlint
                     ]);
  };
}
