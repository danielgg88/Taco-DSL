package dk.itu.smdp.request;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import android.os.AsyncTask;
import android.util.Log;

/**
 * @author Tony Beltramelli www.tonybeltramelli.com
 */
public class HTTPRequestTask extends AsyncTask<String, Integer, Void>
{
	private RequestDelegate _delegate;
	
	public HTTPRequestTask(RequestDelegate delegate)
	{
		_delegate = delegate;
	}
	
	protected Void doInBackground(String... types)
	{
		_performPostRequest(types[0], types[1]);
		
		return null;
	}
	
	protected void onProgressUpdate(Integer progress)
	{
		Log.wtf("onProgressUpdate", String.valueOf(progress));
	}
	
	protected void onPostExecute()
	{
		_delegate.onRequestSuccess();
	}
	
	private void _performPostRequest(String urlAddress, String data)
	{
		try
		{
			URL url = new URL(urlAddress);
			Log.wtf("_performPostRequest", "Sending POST request to URL : " + urlAddress + ", data : " + data);
			
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			
			String params = data;
			
			OutputStream output = connection.getOutputStream();
			output.write(params.getBytes());
			output.close();
			
			int responseCode = connection.getResponseCode();
			Log.wtf("_performPostRequest", "Response Code : " + responseCode);
			
			connection.disconnect();
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}