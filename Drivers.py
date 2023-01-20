from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager


class CustomLibrary(object):

    def get_driver_path_with_browser(self, browsername):
        if browsername.lower() == 'chrome':
            driver_path = ChromeDriverManager().install()
        if browsername.lower() == 'firefox':
            driver_path = GeckoDriverManager().install()
        if browsername.lower() == 'hlc':
            driver_path = ChromeDriverManager().install()
        print(driver_path)
        return driver_path


CustomLibrary.get_driver_path_with_browser()