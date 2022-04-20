(define-module (gerbil installation)
  #:use-module (guix records))

(define-record-type* <home-installation>
  home-installation make-home-installation
  home-installation?
  this-home-installation
  (user-name home-installation-user-name)
  (home-environment home-installation-home-environment)
  (copy-channels? home-installation-copy-channels (default #f))
  (setup-password? home-installation-setup-password (default #f)))

(define-record-type* <installation>
  installation make-installation
  installation?
  this-installation
  (name installation-name)
  (operating-system installation-operating-system)
  (channels installation-channels)
  (home-environments installation-home-environments))
