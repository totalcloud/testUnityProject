using System.Collections;
using UnityEngine.Assertions;
using UnityEngine.TestTools;

namespace test
{
    public class DummyTest 
    {
        [UnityTest]
        public IEnumerator someTest()
        {
            yield return null;
            Assert.AreEqual("hello", "hello");
        }
    }
}