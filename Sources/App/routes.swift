import Vapor

var sockets = [WebSocket]()

func routes(_ app: Application) throws {
    
    func sendAll(_ message: String) {
        sockets.forEach { $0.send(message) }
    }
    
    app.webSocket("echo") { req, ws in
        sockets.append(ws)
        sendAll("누군가 입장하셨습니다.")
        
        ws.onText { ws, text in
            sendAll(text)
        }
    }
}
