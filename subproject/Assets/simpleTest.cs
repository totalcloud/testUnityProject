using System.Collections;
using NUnit.Framework;
using UnityEngine.TestTools;

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
		Assert.AreEqual("ok", "notOk");
		yield return null;
	}
}
