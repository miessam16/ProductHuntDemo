//
//  PostsViewController.swift
//  ProductHuntDemo
//
//  Created by Ahmed Hesham on 6/28/19.
//  Copyright © 2019 Ahmed Hesham. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController  {
    
    @IBOutlet weak var postsTableView: UITableView!
    
    var presenter = HomePresenter()
    var utils = ViewControllerUtils()
    var posts : [Post]?
    var commentsArray : [Comment]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postsTableView.delegate = self
        postsTableView.dataSource = self
        utils.showActivityIndicator(uiView: self.view)
        presenter.loadPosts { (message, post) in
            if message == "success" {
                self.utils.hideActivityIndicator(uiView: self.view)
                self.posts = post
                self.postsTableView.reloadData()
             }else {
                self.utils.hideActivityIndicator(uiView: self.view)
            }
        }
        postsTableView.register(UINib(nibName: "PostViewCell", bundle: nil), forCellReuseIdentifier: "postcell")
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
extension PostsViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if commentsArray?.count ?? 0 > 0 {
            return commentsArray?.count ?? 0
        }
        return posts?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postsTableView.dequeueReusableCell(withIdentifier: "postcell", for: indexPath) as! PostViewCell
        if let postModel = posts?[indexPath.row]{
            cell.configure(model : postModel, comment: commentsArray?[indexPath.row])
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.utils.showActivityIndicator(uiView: self.view)
        presenter.loadComments(postId: "\(posts?[indexPath.row].id ?? 0))" ,  completionHandler: { (message, comments) in
            if message == "success" {
                self.utils.hideActivityIndicator(uiView: self.view)
                self.commentsArray = comments
                self.postsTableView.reloadData()
            }else {
                self.utils.hideActivityIndicator(uiView: self.view)
            }
            
            
            
        })
        
    }
    
    
    
    
    
    
}
