using System.Collections;
using UnityEngine.Assertions;
using UnityEngine.TestTools;

namespace test
{
    public class DummyTest2
    {
        [UnityTest]
        public IEnumerator someTest()
        {
            yield return null;
            Assert.AreEqual("world", "world");
        }
    }
}