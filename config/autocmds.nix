{
  autoCmd = [
    {
      event = ["BufWritePre"];
      pattern = ["*.py"];
      command = ":%s/\t/    /g";
    }
  ];
}
