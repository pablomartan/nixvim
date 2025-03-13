{
  plugins.orgmode = {
    enable = true;

    settings = {
      org_agenda_files = "~/wiki/org/**";
      org_default_notes_file = "~/wiki/org/refile.org";
      org_todo_keywords = ["TODO (t)" "PROG" "|" "DONE"];
      #TODO: add org_todo_keyword_faces
      org_hide_leading_stars = true;
      org_hide_emphasis_marks = true;
      #TODO: add templates
      org_capture_templates = {
        t = {
          description = "Task";
          target = "~/wiki/org/refile.org";
          template = "** TODO %?\n %u";
        };
        n = {
          description = "Note";
          template = "- %?/n";
          subtemplates = {
            b = {
              description = "Book reference";
              template = "- /%^{title}/, %^{author} (%^{year})\n";
              headline = "Libros";
              target = "~/wiki/org/cosas.org";
            };
            l = {
              description = "New link from clipboard";
              template = "- [[%x][%?]]\n";
              headline = "LBook referenceibros";
              target = "~/wiki/org/cosas.org";
            };
          };
        };
      };
    };
  };
}
