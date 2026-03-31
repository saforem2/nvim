require("codestats").setup({
  username = "samforeman",
  base_url = "https://codestats.net",
  api_key = os.getenv("CODESTATS_API_KEY") or "",
  send_on_exit = true,
  send_on_timer = true,
  timer_interval = 20000,
  curl_timeout = 5,
})
