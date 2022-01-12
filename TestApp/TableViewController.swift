//
//  TableViewController.swift
//  TestApp
//
//  Created by John Reis on 13/01/2022.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Demonstrate the bug"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell

        let value = """
Scroll down to the bottom and tap status bar

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a ante hendrerit, facilisis leo in, imperdiet tortor. Mauris ullamcorper mauris a metus bibendum consectetur a vel arcu. Phasellus finibus a tortor ut rutrum. Integer placerat sed nisi vel maximus. Nulla laoreet ante vitae ipsum convallis, vel semper dui blandit. Mauris nec consequat turpis. Vestibulum vitae nisl sodales, cursus odio eget, accumsan lectus. Ut hendrerit rhoncus nulla, sit amet lobortis massa molestie a. Sed pellentesque porttitor ante eget dignissim. Vestibulum a suscipit tortor, molestie luctus nunc.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras et aliquet massa, sed semper augue. Etiam porttitor ultrices augue, id aliquet lectus aliquet sed. Donec felis turpis, convallis eget suscipit vel, finibus nec nibh. Morbi sed mauris ac velit placerat condimentum. Pellentesque aliquet erat ipsum, non ultricies libero vehicula at. Nullam non felis faucibus, viverra lacus at, mollis metus. Nulla tincidunt et massa non fringilla. Fusce sit amet lectus sit amet nibh interdum tincidunt. Morbi sit amet consequat felis. Suspendisse potenti. Duis viverra purus purus, volutpat rhoncus nibh interdum nec. Morbi at ullamcorper tellus. Vestibulum eu congue quam.

Mauris a imperdiet mi. Cras vestibulum commodo nibh, sed ultrices diam interdum a. Fusce volutpat ex in mi mattis pharetra. Aenean at maximus nisl. Proin iaculis orci id nisi mattis vehicula nec placerat leo. Integer molestie elementum tellus. Nulla efficitur dui nec sem fermentum, vel pharetra arcu placerat. In vel turpis et mi imperdiet dapibus. Vivamus non nisl a ipsum hendrerit venenatis vitae quis justo. Aenean sodales commodo vulputate. In vestibulum blandit facilisis. Proin sollicitudin leo id dolor maximus, vel iaculis lacus scelerisque. Mauris et diam mauris.

In a egestas metus, sit amet molestie neque. Vivamus quis arcu eu orci accumsan porta et et dolor. Duis a sapien hendrerit, tincidunt arcu quis, vulputate urna. Quisque sed orci convallis, cursus dolor ac, elementum mi. Vivamus at augue massa. Vivamus nec sapien non nulla imperdiet gravida sed sit amet dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Aliquam sagittis placerat risus eget varius. Vivamus non magna at odio volutpat aliquet. Sed nec sem volutpat, vehicula ipsum vitae, mollis velit. Pellentesque purus neque, vulputate vitae turpis nec, bibendum vestibulum diam. Mauris cursus nibh augue, non tincidunt enim sollicitudin eget. Nulla facilisi. Mauris ac erat ante. Quisque in justo lobortis, rutrum ex eu, ultrices urna. Aliquam eleifend nisl et tristique mattis. Maecenas suscipit dui sem, vel pretium nisi venenatis id. Praesent mauris libero, posuere et interdum ac, pharetra nec turpis. Nullam rutrum tortor eu dui vulputate auctor. Nam id placerat sapien.

Fusce vel porttitor magna. Aenean dignissim laoreet nunc vitae scelerisque. Nunc eros dui, feugiat non venenatis non, suscipit sed purus. Sed vel elit faucibus, dictum eros eu, commodo dui. Proin purus dolor, congue in porta id, ullamcorper quis metus. Nam eget velit venenatis, condimentum elit tempus, sodales ipsum. Nullam at euismod massa. Sed pretium velit lectus, vel molestie sapien ultricies vel. Pellentesque in mauris ac nibh hendrerit dictum vitae eu ipsum. Aenean non nisl et mi sagittis lobortis. Nullam eleifend eros sit amet orci pretium tempus. Praesent sapien urna, faucibus a semper a, feugiat sed dolor. Aliquam arcu eros, imperdiet vel libero id, tincidunt varius elit. Vestibulum vel tellus nec ligula vestibulum tincidunt eu ac nulla. Aliquam ac ex pretium eros elementum tristique.

Integer viverra eleifend lobortis. Mauris ultrices turpis ac dolor fringilla rutrum. Morbi ut tellus elementum, efficitur justo quis, dapibus lectus. Quisque nisi nisl, convallis ut leo et, finibus fermentum urna. Vestibulum facilisis ex non aliquet semper. Nam malesuada rutrum est, ac luctus lorem tincidunt nec. Mauris tempor varius auctor. Donec luctus enim neque, id condimentum quam euismod eget. Fusce interdum, est nec molestie accumsan, eros leo tristique nulla, at imperdiet neque lorem eu turpis. Fusce sit amet sagittis tortor. Nullam sit amet odio id quam ultricies interdum in vel lorem. Suspendisse auctor, velit eget volutpat euismod, magna tellus semper felis, vitae vulputate libero metus ac lacus. Cras nec nisl sed nisi dictum hendrerit at at enim. Morbi at tellus in urna sodales varius vitae eu augue. Aliquam mollis, enim in posuere porta, quam dui tristique mauris, eget aliquet lorem magna vel mauris. Nullam non porta mauris, eget gravida sem.

Aenean ante mi, dapibus blandit pellentesque at, tempor non massa. Nullam et pretium leo. Vivamus faucibus tristique diam, molestie tempus orci congue vitae. Morbi viverra feugiat lectus, ut molestie lorem accumsan sit amet. Vestibulum aliquet pellentesque mattis. Nulla imperdiet a ante at fermentum. Curabitur a ultricies diam, ut accumsan magna. Etiam nec tristique erat, vel scelerisque metus. Ut lacinia leo nisl, vitae pellentesque lorem lobortis in. Ut sed massa eleifend, euismod leo pretium, tempor orci. Proin ac lacus congue, fermentum tortor at, commodo felis. Fusce vel orci ac nisl porttitor posuere. In hac habitasse platea dictumst.

Integer mollis urna a mauris ornare tristique. Nunc posuere erat a sapien aliquet, non posuere nunc pharetra. Praesent ut urna feugiat, ornare risus ac, mattis tellus. Phasellus eleifend sodales velit a elementum. Vivamus ultrices est nec molestie pretium. Etiam laoreet rhoncus sapien. Nullam at erat vitae turpis elementum maximus. Suspendisse potenti. Suspendisse pretium lectus non neque ornare, id fermentum lorem placerat. Aliquam lacinia odio at sapien tincidunt, eget ultrices augue fermentum.

Mauris suscipit, dui sit amet lacinia viverra, mi ligula porta ante, et vestibulum dolor mauris tincidunt odio. Sed bibendum finibus erat, sit amet tempor arcu vulputate eu. Duis maximus augue non nibh tincidunt finibus. Integer ut ultrices tortor. In hac habitasse platea dictumst. Donec cursus massa quam, eu finibus nulla vehicula nec. Donec leo magna, faucibus vitae metus ac, porta vulputate leo. Aliquam nec tellus nec nibh semper tempus a eget neque. Quisque quis odio tempus, imperdiet lacus quis, porttitor massa.
"""
        cell.textLabel?.text = value

        cell.textLabel?.numberOfLines = 0

        return cell
    }
}
