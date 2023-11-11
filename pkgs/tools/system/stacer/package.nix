
{ lib
, stdenv
, qtbase
, qtcharts
, cmake
, qttools
, wrapQtAppsHook
, fetchFromGitHub
}:

stdenv.mkDerivation rec {
  pname="Stacer";
  version = "1.1.0";
  src = fetchFromGitHub{
    owner = "oguzhaninan";
    repo = "Stacer";
    rev = "v${version}";
    sha256 = "Ta9Kvpw/aVcrXvqclGyTKRiJ1J4CCMz3VUsZvOb/zWI=";
  };

  buildInputs = [ qtbase qtcharts cmake qttools ];
  nativeBuildInputs = [ wrapQtAppsHook ];   
  meta = with lib; {
    description = "Stacer is an open source system optimizer and application monitor that helps users to manage entire system with different aspects, its an all in one system utility.";
    homepage = "https://oguzhaninan.github.io/Stacer-Web/";
    maintainers = with maintainers; [ tim ];
    mainProgram = "Stacer";
    lilcense = licenses.gpl3Only;
    platforms = platforms.linux;
  }; 
}