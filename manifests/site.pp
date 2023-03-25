class motd {
  notify{'result':
    message => " c'est le result ${facts['hardware_platform']}";
  }
}





