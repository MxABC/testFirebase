//
//  MainViewController.swift
//  testFireBase
//
//  Created by lbxia on 2023/6/19.
//

import UIKit

// Add the Performance Monitoring module to your header
import FirebasePerformance
import FirebaseAnalytics


class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func crash1(_ sender: Any) {
        
        let arr = NSArray(objects: "1","2")
        
        let str = arr[3]
    }
    
    @IBAction func customTrace1(_ sender: Any) {
        
//        let trace = Performance.startTrace(name: "CUSTOM_TRACE_loop1")
//        // code that you want to trace
//        for index in 1...100005 {
//            print("\(index) times 5 is \(index * 5)")
//        }
//        trace?.stop()
        
        
        let trace = Performance.startTrace(name: "CUSTOM_TRACE_loop2")
        trace?.incrementMetric("EVENT_NAME_loop2", by: 113)
        // code that you want to trace (and log custom metrics)
        for index in 1...1005 {
            print("\(index) times 5 is \(index * 5)")
        }

        trace?.stop()
        
        /*
        var preTrace : Trace?;
        
        if let trace = Performance.startTrace(name: "CUSTOM_TRACE_attr")
        {
            preTrace = trace
             
            trace.setValue("Adddd", forAttribute: "experiment")

            // Update scenario.
//            trace.setValue("B", forAttribute: "experiment")
            
            for index in 1...1005 {
                print("\(index) times 5 is \(index * 5)")
            }

            // Reading scenario.
            let experimentValue:String? = trace.value(forAttribute: "experiment")
            
            print(experimentValue ?? "")

            // Delete scenario.
          //  trace.removeAttribute("experiment")

            // Read attributes.
            let attributes:[String:String] = trace.attributes;
            
            print(attributes)
            
            trace.stop()
        }
        */
        
        

//        if let trace = preTrace {
//            
//            print("log experiment")
//
//            // Reading scenario.
//            let experimentValue:String? = trace.value(forAttribute: "experiment")
//            
//            print(experimentValue ?? "")
//
//            // Delete scenario.
//            trace.removeAttribute("experiment")
//
//            // Read attributes.
//            let attributes:[String:String] = trace.attributes;
//            
//            print(attributes)
//            
//            trace.stop()
//        }
          
           
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func custom_event_test1(_ sender: Any) {

        Analytics.logEvent("event_test1", parameters: ["para1" : "val1"])
//        Analytics.logEvent("event_test1", parameters: nil)

        let title: String? = "记录id"
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemID: "id-\(title!)",
          AnalyticsParameterItemName: title!,
          AnalyticsParameterContentType: "cont",
        ])
        
    }
    
}
