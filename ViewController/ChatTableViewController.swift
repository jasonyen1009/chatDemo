//
//  ChatTableViewController.swift
//  chatDemo
//
//  Created by Yen Hung Cheng on 2023/3/23.
//

import UIKit

class ChatTableViewController: UITableViewController {

    
    let chatHistory = [
        Content(name: Content.teacher, content: "有什麼問題想問嗎？"),
        Content(name: Content.ask, content: "請問可以講解一下梯度下降嗎？"),
        Content(name: Content.teacher, content: "梯度下降是一種最小化函數的優化算法，常用於機器學習和深度學習中。在機器學習中，我們通常需要尋找一組參數，使得損失函數（loss function）的值最小化，從而使我們的模型更加準確。"),
        Content(name: Content.ask, content: "常見的有哪幾種方法呢？"),
        Content(name: Content.teacher, content: "梯度下降算法可以分為三種類型：批量梯度下降（Batch Gradient Descent）、隨機梯度下降（Stochastic Gradient Descent）和小批量梯度下降（Mini-batch Gradient Descent）。"),
        Content(name: Content.ask, content: "為何訓練神經網路時，batch size 過大會容易造成震盪"),
        Content(name: Content.teacher, content: "1. 訓練過程不穩定：當 batch size 過大時，每次迭代使用的樣本數量增加，訓練過程的噪聲也會增加。這可能會導致模型訓練的不穩定性，使得模型難以收斂。2. 過度擬合：當 batch size 過大時，模型可能會過度擬合訓練集，從而導致泛化能力降低。這是因為大批量的數據會使模型更容易記住訓練集的細節，而忽略了更廣泛的特徵。3. 資源限制：當 batch size 過大時，需要更大的記憶體來處理每個批次的數據。如果記憶體不足，訓練過程可能會變得非常緩慢或無法進行。"),
        Content(name: Content.ask, content: "為何使用 CNN 來做影像辨識，不是使用 MLP 呢？"),
        Content(name: Content.teacher, content: "CNN 在影像辨識中的優勢主要體現在參數共享、局部感知和深度學習等方面。這些特性使得 CNN 更加適合處理具有空間結構的數據，例如影像，因此在影像辨識中，CNN 比 MLP 更加適合使用。")
    ]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return chatHistory.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if chatHistory[indexPath.row].name == "teacher" {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Teach", for: indexPath) as! TeachChatTableViewCell
            cell.textView.text = chatHistory[indexPath.row].content
            
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Ask", for: indexPath) as! AskChatTableViewCell
            cell.textView.text = chatHistory[indexPath.row].content
            return cell
        }
        
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
