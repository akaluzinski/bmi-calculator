import UIKit

class CalculateViewController: UIViewController {
    
    var bmi: Double?
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value;
        let weight = weightSlider.value;
        bmi = Double(weight/pow(height, 2))
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.bmiValue = String(format: "%.0f", self.bmi!)
        }
    }


}

