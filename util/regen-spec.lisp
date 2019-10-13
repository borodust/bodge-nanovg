(bind-arguments build-directory system-name target &key (arch "x86_64") mode)

(when (and (not (uiop:emptyp mode)) (string= (string-downcase mode) "gl2"))
  (pushnew :bodge-gl2 *features*))

(script "regen-local-spec-and-zip" "--arch" arch build-directory system-name target)
