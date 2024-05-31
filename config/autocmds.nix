{
  autoCmd = [
    {
      event = ["BufWritePre"];
      pattern = ["*.js*" "*.ts*" "*.*css"];
      command = "Neoformat";
    }
  ];
}
