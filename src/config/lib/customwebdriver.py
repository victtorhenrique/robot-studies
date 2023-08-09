from robot.api.deco import keyword
from selenium.webdriver.chrome.options import Options


class customwebdriver:
    def __init__(self):
        pass

    @keyword("Create Custom Options")
    def create_custom_options(self, down_path, headless: bool = False):
        """ Essa função permite escolher o caminho desejado para fazer download e também permite fazer o download de arquivos no modo headless
        """
        options = Options()
        options.add_argument("--no-sandbox")
        options.add_argument("--disable-dev-shm-usage")
        options.add_argument("--disable-popup-blocking")

        options.add_argument("--start-maximized")
        options.add_argument("--incognito")
        
        if headless:
            options.add_argument("--headless=new")
        
        options.add_argument("--window-size=1920,1080")
        options.add_argument("--log-level=1")
        options.add_argument("--safebrowsing-disable-download-protection")
        options.add_argument("--disable-web-security")
        options.add_experimental_option("prefs", {
            "download.default_directory": down_path,
            "download.prompt_for_download": False,
            "plugins.always_open_pdf_externally": True,
            "download.open_pdf_in_system_reader": False,
            "profile.default_content_settings.popups": 0,
            "profile.default_content_setting_values.notifications": 2,
            "safebrowsing.enabled": False
        })
        return options
