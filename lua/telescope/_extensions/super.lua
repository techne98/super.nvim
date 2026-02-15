return require("telescope").register_extension {
  setup = function(ext_config, config)
  end,
  exports = {
    super = require("super").super
  },
}
