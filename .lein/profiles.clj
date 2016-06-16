{:user {:plugins [[cider/cider-nrepl "0.13.0-SNAPSHOT"]
                  [refactor-nrepl "2.3.0-SNAPSHOT"]
                  [lein-ancient "0.6.7" :exclusions [org.clojure/clojure]]
                  [lein-pprint "1.1.2"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.12"]
                       [pjstadig/humane-test-output "0.7.0"]
                       [spyscope "0.1.5" :exclusions [clj-time]]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)
                     (require 'spyscope.core)]}}
