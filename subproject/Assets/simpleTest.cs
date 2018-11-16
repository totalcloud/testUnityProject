using UnityEngine.TestTools;
using NUnit.Framework;
using System.Collections;

public class SimpleTest {

	[Test]
	public void simpleTestSimplePasses() {
		// Use the Assert class to test conditions.
		Assert.AreEqual("okay", "okay");
	}

	// A UnityTest behaves like a coroutine in PlayMode
	// and allows you to yield null to skip a frame in EditMode
	[UnityTest]
	public IEnumerator simpleTestWithEnumeratorPasses() {
		// Use the Assert class to test conditions.
		// yield to skip a frame
		Assert.AreEqual("ok", "ok");
		yield return null;
	}
}
