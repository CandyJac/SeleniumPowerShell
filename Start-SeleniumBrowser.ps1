 Function Start-SeleniumBrowser {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true)]
        [ValidateSet('Chrome','IE','Firefox')]
        [String]
        $Browser,
        
        [Parameter(Mandatory = $false)]
        $Url
        )
           
        switch ($Browser) {
            'Chrome' {
               $global:WebDriver = New-Object -TypeName OpenQA.Selenium.Chrome.ChromeDriver
                  }
            
            'IE' {
               $global:WebDriver = New-Object -TypeName OpenQA.Selenium.IE.InternetExplorerDriver
                  }
            
            'Firefox' {
               $global:WebDriver = New-Object -TypeName OpenQA.Selenium.Firefox.FirefoxDriver
                }
         }

            $global:WebDriver.Navigate().GoToUrl("http://www." + $Url)

}


