return {
	"https://github.com/nocksock/do.nvim",
	opts = {
		message_timeout = 2000,
		kaomoji_mode = 0, -- 0 kaomoji everywhere, 1 skip kaomoji in doing
		winbar = true,
		doing_prefix = "Doing: ",
		store = {
			auto_create_file = false, -- automatically create a .do_tasks when calling :Do
			file_name = ".do_tasks",
		}
	}

}
