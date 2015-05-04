{:user {:plugins [[cider/cider-nrepl "0.9.0-SNAPSHOT"]
                  [lein-ancient "0.6.7"]
                  [lein-pprint "1.1.2"]
                  [refactor-nrepl "1.0.5" :exclusions [org.clojure/clojure]]]
        :dependencies [[org.clojure/tools.nrepl "0.2.10"]
                       [pjstadig/humane-test-output "0.7.0"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
