# List of applications
# format: name:app_to_open:icon
# use: replace whitespaces on name for ^
APPS = \
	iTerm:com.googlecode.iterm2:terminal_icon \
	Terminal:com.apple.terminal:terminal_icon \
	Visual^Studio:com.microsoft.VSCode:editor_icon

# Macro to define apps from list
define TARGETS
$(eval args = $(subst :, ,$1))
$(eval cmd = ./builds/Open\ Current\ Folder\ in\ $(subst ^,\ ,$(word 1,${args})).app)
apps += $(cmd)
ids += $(word 2,${args})
${cmd}: $(word 2,${args}) ./icons/$(word 3,${args}).icns
endef

all: build

apps =
ids =
$(foreach app,$(APPS),$(eval $(call TARGETS,${app})))

build: $(apps)

# Build icons from set
%.icns: %.png
	@echo "building: $@"
	@$(eval ICONSET := $(basename $@).iconset)
	@mkdir -p "${ICONSET}"
	@cp "$<" "${ICONSET}/icon_512x512@2x.png"
	@iconutil -c icns "${ICONSET}"
	@rm -R "${ICONSET}"

# Build apple bundle
%.app: src/main.applescript
	@echo "building: $@"
	@mkdir -p $(word 1,$(@D))
	@cat "$<" | sed 's/__APP__/$(word 2,$^)/g' | osacompile -o "$@"
	@cp "$(word 3,$^)" "$@/Contents/Resources/applet.icns"

clean:
	@rm -Rf ./builds
	@find ./icons -name '*icns' -exec rm -rf '{}' +

# Mark not a file tasks
.PHONY: all clean $(ids)
