Autotest.add_discovery { "rails" }
Autotest.add_discovery { "rspec2" }
Autotest.add_hook :initialize do |autotest|
  autotest.add_mapping(%r%ˆspec/(requests)/.*rb$%) do|filename, _|
    filename
  end
end
