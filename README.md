# MiTu
[![Version](https://img.shields.io/cocoapods/v/MiTu.svg?style=flat)](https://cocoapods.org/pods/MiTu)
[![License](https://img.shields.io/cocoapods/l/MiTu.svg?style=flat)](https://cocoapods.org/pods/MiTu)
[![Platform](https://img.shields.io/cocoapods/p/MiTu.svg?style=flat)](https://cocoapods.org/pods/MiTu)

## About
This CocoaPods library is software development kit for iOS, the project depends on 'SnapKit', '~> 5.6.0' 


## Installation with CocoaPods
To integrate MiTu into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
target 'MyApp' do
  pod 'MiTu'
end
```

## Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but AlamofireImage does support its use on supported platforms.

Once you have your Swift package set up, adding AlamofireImage as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/hominhtuong/MiTu.git", .upToNextMajor(from: "1.0.6"))
]
```

## Example code:
The code would look like this:

```swift
import MiTu

//Add button to view
let helloButton = UIButton()
helloButton >>> view >>> {  //Add button to view then return this button in block
    $0.snp.makeConstraints {
        $0.top.equalTo(topSafe).offset(16)
        $0.centerX.equalToSuperview()
        $0.height.equalTo(39)
        $0.width.equalTo(343)
    }
    $0.setTitle("Hello", for: .normal)
    $0.setTitleColor(.link, for: .normal)
    $0.setImage(UIImage(named: imageName), for: .normal)
    $0.handle {
        print("button tapped!")
    }
}
```

TextField with custom style:

```swift
import MiTu

let userNameTextField = TTextField()
userNameTextField >>> view >>> {
    $0.snp.makeConstraints {
        $0.top.equalTo(helloButton.snp.bottom).offset(32)
        $0.leading.equalToSuperview().offset(16)
        $0.trailing.equalToSuperview().offset(-16)
        $0.height.equalTo(50)
    }
    $0.placeholder = "Enter Username"
    $0.editingChangedHandle {
        let text = userNameTextField.text ?? ""
        print(text)
    }
    $0.editingDidEndHandle {
        guard let username = userNameTextField.text else {return}
        print("username: \(username)")
    }
}

```

CollectionView and TableView like this:

```swift
import MiTu

//MARK: - Add to view 
collectionView >>> view >>> {
    $0.snp.makeConstraints {
        $0.edges.equalToSuperview()
    }
    $0.backgroundColor = UIColor.from("0268FF")
    $0.registerReusedCell(AnyCollectionViewCell.self)
    $0.delegate = self
    $0.dataSource = self
}

//MARK: - In Cell
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusable(cellClass: AnyCollectionViewCell.self, indexPath: indexPath)
    let item = items[indexPath.item]
    cell.configs(item)
    
    return cell
}

```

## License

MiTu is released under the MIT license. [See LICENSE](https://github.com/hominhtuong/MiTu/blob/main/LICENSE) for details.
My website:. [Visit](https://hominhtuong.com/)
