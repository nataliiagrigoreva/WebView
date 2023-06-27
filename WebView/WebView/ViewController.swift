import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.google.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    // Метод делегата WKNavigationDelegate, который позволяет обрабатывать события навигации
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Загрузка страницы завершена")
    }
}
