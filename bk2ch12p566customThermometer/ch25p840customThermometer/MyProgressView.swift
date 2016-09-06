
import UIKit

class MyProgressView: UIView {
    
    var value : CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        let c = UIGraphicsGetCurrentContext()!
        UIColor.white.set()
        let ins : CGFloat = 2.0
        let r = self.bounds.insetBy(dx: ins, dy: ins)
        let radius : CGFloat = r.size.height / 2.0
        let cgpi = CGFloat.pi
        let path = CGMutablePath()
        path.move(to:CGPoint(r.maxX - radius, ins))
        path.addArc(center:CGPoint(
                    radius+ins, radius+ins), radius: radius, startAngle: -cgpi/2.0, endAngle: cgpi/2.0, clockwise: true)
        path.addArc(center:CGPoint(r.maxX - radius, radius+ins), radius: radius, startAngle: cgpi/2.0, endAngle: -cgpi/2.0, clockwise: true)
        path.closeSubpath()
        c.addPath(path)
        c.setLineWidth(2)
        c.strokePath()
        c.addPath(path)
        c.clip()
        c.fill(CGRect(r.origin.x, r.origin.y, r.width * self.value, r.height))
    }

}
