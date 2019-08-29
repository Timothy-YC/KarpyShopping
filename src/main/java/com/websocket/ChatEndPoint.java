package com.websocket;

import java.io.IOException;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.EncodeException;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.websocket.model.Message;

@ServerEndpoint(value = "/chat/{username}", decoders = MessageDecoder.class, encoders = MessageEncoder.class)
public class ChatEndPoint {

	private Session session;
	private static Set<ChatEndPoint> chatEndpoints = new CopyOnWriteArraySet<>();
	private static HashMap<String, String> users = new HashMap<>();

	@OnOpen
	public void onOpen(Session session, @PathParam("username") String username) throws IOException {

		this.session = session;
		chatEndpoints.add(this);
		users.put(session.getId(), username);

		Message message = new Message();
		message.setFrom(username);
		message.setContent("Connected!");
		broadcast(message);

	}

	@OnMessage
	public void onMessage(Session session, Message message) throws IOException {

		message.setFrom(users.get(session.getId()));
		broadcast(message);
	}

	@OnClose
	public void onClose(Session session) throws IOException {

		chatEndpoints.remove(this);
		Message message = new Message();
		message.setFrom(users.get(session.getId()));
		message.setContent("Disconnected!");
		broadcast(message);
	}

	@OnError
	public void onError(Session session, Throwable throwable) {
		// Do error handling here
	}

	private static void broadcast(Message message) {

		chatEndpoints.forEach(endpoint -> {
			synchronized (endpoint) {
				try {
					endpoint.session.getBasicRemote().sendObject(message);
				} catch (IOException | EncodeException e) {
					e.printStackTrace();
				}
			}
		});
	}

}
